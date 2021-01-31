using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class QuadrantController : MonoBehaviour
{
    float timeLeft;
    public Color targetColor;

    public bool choiceColor; //if true, text is glowy orange; if false, it's black

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (choiceColor)
        {
            if (gameObject.GetComponent<Text>().color != targetColor)
            {
                gameObject.GetComponent<Text>().color = Color.Lerp(gameObject.GetComponent<Text>().color, Color.black, Time.deltaTime);
            }
        }
        else
        {
            if (gameObject.GetComponent<Text>().color != Color.black)
            {
                gameObject.GetComponent<Text>().color = Color.Lerp(gameObject.GetComponent<Text>().color, Color.black, Time.deltaTime);
            }
        }
    }

    public void OnMouseOver()
    {
        if (choiceColor)
        {QuadrantSelected();}
        Debug.Log(gameObject + " was selected");
    }

    private void QuadrantSelected()
    {
        //Send a message to the UI Controller

        GameObject.FindGameObjectWithTag("UIController").GetComponent<UIController>().QuadrantSelected(gameObject);
    }

    public void DisplayChoiceText(string textToDisplay)
    {
        choiceColor = true;
        gameObject.GetComponent<Text>().text = textToDisplay;
        //smoothly change text color to orange
        //display text
    }

    public void DisplayParagraphText(string textToDisplay)
    {
        choiceColor = false;
        gameObject.GetComponent<Text>().text = textToDisplay;
        //smoothly change text color to black
        //display text
    }

    public void ClearText()
    {
        choiceColor = false;
        //delete all text
    }
}
