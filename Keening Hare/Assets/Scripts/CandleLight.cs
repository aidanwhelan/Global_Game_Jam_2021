using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Experimental.Rendering.LWRP;

public class CandleLight : MonoBehaviour
{

    private Vector2 mousePosition;
    private float moveSpeed = 5f;

    private int flickerCounter;

    public int flickerCount = 5;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        mousePosition = Camera.main.ScreenToWorldPoint(Input.mousePosition);
        transform.position = Vector2.Lerp(transform.position, mousePosition, moveSpeed);

        if (flickerCounter == 0)
        {
            gameObject.GetComponent<UnityEngine.Experimental.Rendering.Universal.Light2D>().intensity = Random.Range(1f, 1.5f);
            flickerCounter = flickerCount;
        }
        else
        {
            flickerCounter--;
        }
    }
}
