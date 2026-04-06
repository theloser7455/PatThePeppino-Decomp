function return_random_array(arg0)
{
	random_set_seed(irandom(10000))
	return arg0[irandom(array_length(arg0) - 1)];
}