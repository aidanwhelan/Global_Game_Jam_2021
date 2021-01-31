/*
InkTestingScript.cs

This is a Demo script to show how a JSON file, compiled from an Ink project,
can be read in and navigated using the Story API.
*/
using Ink.Runtime;
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InkTestingScript : MonoBehaviour
{
    //Take in new Ink file, extracting text from .json
    public TextAsset inkJSON;
    private Story story;

    // Start is called before the first frame update
    void Start()
    {
        //Create a Story object to navigate JSON text contents with Story API
        story = new Story(inkJSON.text);
        Debug.Log(loadStoryChunk() );

        //Example: Display all currently available choices
        for(int i = 0; i < story.currentChoices.Count; i++)
        {
            Debug.Log(story.currentChoices[i].text);
        }

        //Example: Choose the first choice
        story.ChooseChoiceIndex(0);

        Debug.Log(loadStoryChunk() );

        //Example: Choose the first choice
        story.ChooseChoiceIndex(1);

        Debug.Log(loadStoryChunk() );
    }

    // Update is called once per frame
    void Update()
    {

    }

    string loadStoryChunk()
    {
        string text = "";
        if(story.canContinue)
        {
            text = story.ContinueMaximally();
        }

        return text;
    }
}
