namespace VCS
{
    /// <summary>
    /// Payment Process is a class which is used to decide which payment process to be used in the Payment Gateway and
    /// #respective routines for the same  
    /// </summary>
    public abstract class PaymentProcess
    {
        public abstract bool StartPaymentProcess(float amount);
    }
}
