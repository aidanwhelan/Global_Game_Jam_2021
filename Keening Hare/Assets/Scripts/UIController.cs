using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class UIController : MonoBehaviour
{

    public Text quadrantOne;
    public Text quadrantTwo;
    public Text quadrantThree;
    public Text quadrantFour;
    public Text centerText;

    public List<Text> quadrantList = new List<Text>();
    public ChoiceScript choiceScript;
    
    public bool displayingChoices = false;

    public Text currentParagraphLocation;

    public List<string> currentChoiceList;

    // Start is called before the first frame update
    void Start()
    {
        centerText.GetComponent<CenterTextController>().DisplayText(choiceScript.loadStoryChunk());

        quadrantList.Add(quadrantOne);
        quadrantList.Add(quadrantTwo);
        quadrantList.Add(quadrantThree);
        quadrantList.Add(quadrantFour);

        currentParagraphLocation = centerText;

    }

    // Update is called once per frame
    void Update()
    {

        if (Input.GetKeyDown("space"))
        {
            AdvanceText();
            Debug.Log("SPACE!");
        }
    }

    /*public void QuadrantSelected(GameObject textObject)
    {
        currentParagraphLocation = textObject.GetComponent<Text>();
    }*/

    /*void OnMouseDown()
    { if (!displayingChoices)
        {
            Debug.Log("CLICK!");
            AdvanceText();}
    }*/

    public void AdvanceText()
    {
        if (currentParagraphLocation == centerText)
        {currentParagraphLocation.GetComponent<CenterTextController>().DisplayText(choiceScript.loadStoryChunk());}
        else
        {
            currentParagraphLocation.GetComponent<QuadrantController>().DisplayText(choiceScript.loadStoryChunk());
        }
        CheckForNewChoices();
    }

    public void CheckForNewChoices()
    {
        if (choiceScript.AreThereChoicesToDisplay() && !displayingChoices)
        {
            DisplayChoices();
        }
    }

    public void DisplayChoices()
    {
        displayingChoices = true;
        if (currentParagraphLocation == centerText)
        {
            currentChoiceList = choiceScript.ChooseFullChoices();
            //Display them on the corners
            foreach (Text cornerTextElement in quadrantList)
            {
                cornerTextElement.GetComponent<QuadrantController>().ClearText();
            }
            for(int i=0; i<currentChoiceList.Count; i++)
            {
                quadrantList[i].GetComponent<QuadrantController>().DisplayChoiceText(currentChoiceList[i], i);
            }

            Debug.Log("Chose four choices");
        }
        else
        {
            currentChoiceList = choiceScript.ChooseThreeChoices();
            //display them on all corners but the currentparagraphlocation
            foreach (Text cornerTextElement in quadrantList)
                {
                    cornerTextElement.GetComponent<QuadrantController>().ClearText();
                }
            for(int i=0; i<currentChoiceList.Count; i++)
                {
                    quadrantList[i].GetComponent<QuadrantController>().DisplayChoiceText(currentChoiceList[i], i);
                }
            Debug.Log("Chose three choices");
        }
    }

    public void QuadrantSelected(Text quadrant, int choiceNumNum)
    {
        choiceScript.story.ChooseChoiceIndex(choiceNumNum);
        currentParagraphLocation = quadrant;
        foreach (Text cornerTextElement in quadrantList)
            {
                if (cornerTextElement != currentParagraphLocation)
                {
                    cornerTextElement.GetComponent<QuadrantController>().ClearText();
                }
            }
        displayingChoices = false;
        AdvanceText();
    }

}
