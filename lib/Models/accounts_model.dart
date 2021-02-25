class Accounts {
  final List balance;
  final String currencyIsoCode;
  final double value;
  final int id;
  final String owner;
  final int accountNumber;
  final String accountName;
  final String iban;

  Accounts(
    this.balance,
    this.currencyIsoCode,
    this.value,
    this.id,
    this.owner,
    this.accountNumber,
    this.accountName,
    this.iban,
  );

  static const accountList = [
    {
      "balance": {
        "currencyIsoCode": "CHF",
        "value": 14151.84,
      },
      "id": "27",
      "owner": "Erika Von Mühlenen",
      "accountNumber": "00020351",
      "accountName": "Credit Card Account",
      "iban": "CH5956810128753034072019",
    },
    {
      "balance": {
        "currencyIsoCode": "CHF",
        "value": 11315.11,
      },
      "id": "28",
      "owner": "Yana Kocher",
      "accountNumber": "03963169",
      "accountName": "Credit Card Account",
      "iban": "CH470125018664130327935",
    },
    {
      "balance": {
        "currencyIsoCode": "CHF",
        "value": 3908.14,
      },
      "id": "29",
      "owner": "Anaïs Benoit",
      "accountNumber": "28825289",
      "accountName": "Credit Card Account",
      "iban": "CH8850807000403728",
    },
    {
      "balance": {
        "currencyIsoCode": "CHF",
        "value": 10843.05,
      },
      "id": "30",
      "owner": "Maximilian Ruchti",
      "accountNumber": "99831726",
      "accountName": "Home Loan Account",
      "iban": "CH3252AFW775SQ09900M7427",
    },
    {
      "balance": {
        "currencyIsoCode": "CHF",
        "value": 11772.13,
      },
      "owner": "Rafael Munz",
      "id": "31",
      "accountNumber": "61738708",
      "accountName": "Money Market Account",
      "iban": "CH9108558062Y6853420",
    },
    {
      "balance": {
        "currencyIsoCode": "CHF",
        "value": 4227.69,
      },
      "id": "32",
      "owner": "Eleonora Mühlemann",
      "accountNumber": "83188701",
      "accountName": "Investment Account",
      "iban": "CH870626852900227468",
    }
  ];
}
