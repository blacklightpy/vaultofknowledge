Callbacks or callback functions are references that are passed as arguments to a piece of code, which will execute whenever an event associated with the callback function occurs.

The function will be executed externally by an API.

Generally it is used to call a higher level subroutine from a lower-level software like the operating system.


**Examples**
- Windows API - e.g. WaveOutProc()
- In JavaScript, they are functions passed as arguments to other functions, for calling other functions from a function
- A pseudocode example:
  ```
  funct printANumber(int n, callback callbackFunction) {
	  printout("Printing" + n);
  }
  funct printFinishMessage(){
	  printout("Finished printing.");
  }
  funct main() {
	  printANumber(6, printFinishMessage);
  }
  ```
  The output will be:
  ```
  Printing 6
  Finished printing
  ```