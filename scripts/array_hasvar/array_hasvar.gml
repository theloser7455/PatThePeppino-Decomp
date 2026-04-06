function array_hasvar(arg0, arg1)
{
	var i
	for (i = 0; i < array_length(arg1); i += 1)
	{
		if arg1[i] == arg0
			return true;
	}
	if i == (array_length(arg1) - 1)
		return false;
}