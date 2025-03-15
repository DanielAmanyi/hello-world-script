def cowsay(message):
    border = "-" * (len(message) + 2)
    cow = r"""
        \   ^__^
         \  (oo)\___^___
            (__)\       )\/\
                ||----w |\
                || super||
    """
    speech_bubble = f"""
      {border}
    < {message} >
      {border}
    """
    print(speech_bubble)
    print(cow)


# Example usage
cowsay("Hello, Jenkins!")
