function approach(arg0, arg1, arg2)
{
	return arg0 + clamp(arg1 - arg0, -abs(arg2), abs(arg2));
}