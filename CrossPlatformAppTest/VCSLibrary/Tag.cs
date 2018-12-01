namespace VCS
{
    /// <summary>
    /// Used to store Tags used for Product Recognition
    /// </summary>
    class Tag
    {
        int _tagId;
        string _tagName;

        /// <summary>
        /// Get/Set TagID
        /// </summary>
        public int TagId { get => _tagId; set => _tagId = value; }

        /// <summary>
        /// Get/Set TagName
        /// </summary>
        public string TagName { get => _tagName; set => _tagName = value; }
    }
}
