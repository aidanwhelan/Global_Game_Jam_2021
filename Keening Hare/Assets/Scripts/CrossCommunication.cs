/*
InkTestingScript.cs

This is a Demo script to show how a JSON file, compiled from an Ink project,
can be read in and navigated using the Story API.
*/
/*using Ink.Runtime;
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CrossCommunication : MonoBehaviour
{
    //Take in new Ink file, extracting text from .json
    public TextAsset inkJSON;
    private Story story;
    public GameObject ChoiceScript;


    // Start is called before the first frame update
    void Start()
    {
        //Create a Story object to navigate JSON text contents with Story API
        story = new Story(inkJSON.text);
        
        string outString = ChoiceScript.GetComponent<ChoiceScript>().loadStoryChunk(story);
        Debug.Log(outString);
        ChoiceScript.GetComponent<ChoiceScript>().FirstChoice(story);

        outString = ChoiceScript.GetComponent<ChoiceScript>().loadStoryChunk(story);
        Debug.Log(outString);
    }

    // Update is called once per frame
    void Update()
    {

    }

}
*/