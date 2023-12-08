#include "message.h"

Message::Message(QObject *parent) : QObject(parent)
{
    m_author = ":)";
}

void Message::setAuthor(const QString &a)
{
    m_author = QString("%1 world.").arg(a);
    emit authorChanged();
}

QString Message::author() const
{
    return m_author;
}
