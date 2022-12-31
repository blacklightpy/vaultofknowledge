Callbacks or callback functions are references that are passed as arguments to a piece of code, which will execute whenever an event associated with the callback function occurs.

The function will be executed externally by an API.

**Examples**
- Windows API - e.g. WaveOutProc()
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