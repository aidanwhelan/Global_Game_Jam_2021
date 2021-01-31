using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class QuadrantController : MonoBehaviour
{
    float timeLeft;
    private Color targetColor;

    public int currentChoiceNum;

    public bool choiceColor; //if true, text is glowy orange; if false, it's black

    public bool selectionAvailable;

    // Start is called before the first frame update
    void Start()
    {
        targetColor = new Color(1f, 0.85f, 0.65f, 1f);
    }

    // Update is called once per frame
    void Update()
    {
        if (choiceColor)
        {
            if (gameObject.GetComponent<Text>().color != targetColor)
            {
                gameObject.GetComponent<Text>().color = Color.Lerp(gameObject.GetComponent<Text>().color, targetColor, Time.deltaTime);
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
        {
            QuadrantSelected();
            selectionAvailable = false;
            Debug.Log(gameObject + " was selected");
        }
    }

    private void QuadrantSelected()
    {
        //Send a message to the UI Controller

        GameObject.FindGameObjectWithTag("UIController").GetComponent<UIController>().QuadrantSelected(gameObject.GetComponent<Text>(), currentChoiceNum);
    }

    public void DisplayChoiceText(string textToDisplay, int choiceNum)
    {
        choiceColor = true;
        currentChoiceNum = choiceNum;
        gameObject.GetComponent<Text>().text = textToDisplay;
        Debug.Log(gameObject + " displayed " + textToDisplay + "       and choiceColor is " + choiceColor);
        selectionAvailable = true;
        //smoothly change text color to orange
        //display text
    }


    public void DisplayText(string text)
    {
        choiceColor = false;
        //gameObject.GetComponent<Text>().color = Color.clear;
        gameObject.GetComponent<Text>().text = text;
    }

    public void ClearText()
    {
        choiceColor = false;
        selectionAvailable = false;
        Debug.Log(gameObject + " had its text cleared");
        //delete all text
    }
}
