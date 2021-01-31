using Ink.Runtime;
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChoiceScript : MonoBehaviour
{
    public TextAsset inkJSON;
    public Story story;

    void Start()
    {
        story = new Story(inkJSON.text);
    }

    //Chooses the indexed choice at a decision junction
    //Returns: String of all text between provided choice and next decision
    public string ChooseChoice(ref Story story, int index)
    {
      string text = "";
      story.ChooseChoiceIndex(index);
      if(story.canContinue)
      {
          text = story.ContinueMaximally();
      }
      return text;
    }

    //Takes a list of choices at a junction, then randomly chooses four
    //  without repeating
    //Returns: List of four strings
    public List<string> ChooseFourChoices(List<string> choices)
    {
        List<string> outputList = new List<string>();
        int randNum = 0;
        System.Random rnd = new System.Random();
        for(int i = 0; i < 4; i++)
        {
            randNum = rnd.Next(choices.Count);
            outputList.Add(choices[randNum]);
            choices.RemoveAt(randNum);
        }

        return outputList;
    }

    public string DemoMethod()
    {
      string outString = "Heya, chaff! This is pure gem!";
      return outString;
    }

    public string loadStoryChunk()
    {
        string text = "";
        if(story.canContinue)
        {
            text = story.Continue();
        }
        return text;
    }

    public bool AreThereChoicesToDisplay()
    {
        if(story.canContinue)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    public List<string> ChooseFullChoices()
    {
        List<string> outputList = new List<string>();
        int choiceListLength = story.currentChoices.Count;
        Debug.Log(choiceListLength);
        for(int i=0; i<choiceListLength; i++)
        {
            //LATER ADD ACTUAL RANDOMNESS
            outputList.Add(story.currentChoices[i].text);
        }
        Debug.Log(outputList[0]);
        return outputList;
    }
    public List<string> ChooseThreeChoices()
    {
        List<string> outputList = new List<string>();

        for(int i=0; i<3; i++)
        {
            //LATER ADD ACTUAL RANDOMNESS
            if (story.currentChoices[i] != null)
            {outputList.Add(story.currentChoices[i].text);}
        }

        return outputList;
    }
}

