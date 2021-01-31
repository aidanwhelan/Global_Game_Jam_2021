using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CenterTextController : MonoBehaviour
{
    private bool displayingText;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (displayingText)
        {
            if (gameObject.GetComponent<Text>().color != Color.black)
            {
                gameObject.GetComponent<Text>().color = Color.Lerp(gameObject.GetComponent<Text>().color, Color.black, Time.fixedTime);
            }
            else
            {
                displayingText = false;
            }
        }
    }

    public void DisplayText(string text)
    {
        displayingText = true;
        gameObject.GetComponent<Text>().color = Color.clear;
        gameObject.GetComponent<Text>().text = text;
    }
}
