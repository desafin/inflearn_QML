#ifndef MESSAGE_H
#define MESSAGE_H

#include <QObject>
#include <QQmlProperty>
#include <QDebug>
#include <QTimer>

class Message : public QObject {
    Q_OBJECT
    Q_PROPERTY(QString author READ author WRITE setAuthor NOTIFY authorChanged)

public:
    explicit Message(QObject *parent = nullptr);
    void setAuthor(const QString &a);
    QString author() const;

signals:
    void authorChanged();

private:
    QString m_author;
};


#endif // MESSAGE_H
