// a function to return nth top entry from the history.

#define RETURN_VALUE

#define MIN_AMS 101
#include <args.h>
#include <estack.h>
#include <homescr.h>

void _main(void)
{
  ESI argptr = top_estack;
  short a = GetIntArg (argptr);
  while (GetArgType (top_estack) != END_TAG)  // Clean up arguments
    top_estack = next_expression_index (top_estack);
  top_estack--;

  push_expression(
  	HToESI(HS_getEntry(HS_countFIFO()-a+1))
  );
}
