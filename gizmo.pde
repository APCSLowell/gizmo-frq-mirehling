public static int getCheck(int num)
{
int sum = 0;
for (int i = 1; i <= getNumberOfDigits(num); i++)
{
sum += (8 - i) * getDigit(num, i);
}
return sum % 10;
}

public static boolean isValid(int numWithCheckDigit)
{
int check = numWithCheckDigit % 10;
int num = numWithCheckDigit / 10;
int newCheck = getCheck(num);
if (check == newCheck)
{
return true;
}
else
{
return false;
} 
