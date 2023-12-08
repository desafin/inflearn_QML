#include "message.h"

Message::Message(QObject *parent)
    : QObject{parent}
{
    qDebug()<<"Message 클래스 생성자 호출";
    m_author="";
    m_value=0;

}
