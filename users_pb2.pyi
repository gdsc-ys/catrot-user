from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from typing import ClassVar as _ClassVar, Optional as _Optional

DESCRIPTOR: _descriptor.FileDescriptor

class MannerReply(_message.Message):
    __slots__ = ["message"]
    MESSAGE_FIELD_NUMBER: _ClassVar[int]
    message: str
    def __init__(self, message: _Optional[str] = ...) -> None: ...

class MannerRequest(_message.Message):
    __slots__ = ["amount", "direction", "id"]
    AMOUNT_FIELD_NUMBER: _ClassVar[int]
    DIRECTION_FIELD_NUMBER: _ClassVar[int]
    ID_FIELD_NUMBER: _ClassVar[int]
    amount: float
    direction: str
    id: int
    def __init__(self, id: _Optional[int] = ..., amount: _Optional[float] = ..., direction: _Optional[str] = ...) -> None: ...

class UserReply(_message.Message):
    __slots__ = ["manner", "nickname", "phone"]
    MANNER_FIELD_NUMBER: _ClassVar[int]
    NICKNAME_FIELD_NUMBER: _ClassVar[int]
    PHONE_FIELD_NUMBER: _ClassVar[int]
    manner: float
    nickname: str
    phone: str
    def __init__(self, nickname: _Optional[str] = ..., phone: _Optional[str] = ..., manner: _Optional[float] = ...) -> None: ...

class UserRequest(_message.Message):
    __slots__ = ["id"]
    ID_FIELD_NUMBER: _ClassVar[int]
    id: int
    def __init__(self, id: _Optional[int] = ...) -> None: ...
