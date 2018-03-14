pragma solidity ^0.4.17;

contract Adoption {
    struct Message {
        string word; // 留言
        address from; // 留言者地址
        string timestamp ; // 留言unix时间戳
    }

    Message[] private wordArr;

    function setWord(string s, string t) public {
        wordArr.push(Message({
            word: s,
            from: msg.sender,
            timestamp: t
        }));
    }

    function getAllWord() public view returns (string, string ) {
		if (wordArr.length == 0) {
			return ("", "");
		}
		Message storage result = wordArr[wordArr.length - 1];
        return (result.word, result.timestamp);
    }
}