using Ink.Runtime;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChoiceScript : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

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
        Random rnd = new Random();
        for(int i = 0; i < 4; i++)
        {
            randNum = rnd.Next(choices.Count);
            outputList.Add(choices[randNum]);
            choices.RemoveAt(randNum);
        }

        return outputList;
    }
}
