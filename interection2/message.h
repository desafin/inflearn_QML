#ifndef MESSAGE_H
#define MESSAGE_H

#include <QObject>
#include <QQmlProperty>
#include <QDebug>

class Message : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString author READ author WRITE setAuthor NOTIFY authorChanged FINAL)
public:
    explicit Message(QObject *parent = nullptr);
    Q_INVOKABLE int postMessage(const QString &msg){
        qDebug()<<"str:"<<msg;
        return ++m_value;
    }

    QString author() const{
        return m_author;
    }
    void setAuthor(const QString &a){
        m_author=QString("%1 world").arg(a);
    }


signals:
    void authorChanged();


private:
    QString m_author;
    int m_value;

public slots:
    void refresh(){
        qDebug()<<"C++슬롯함수 호출:"<<m_value;
    }
};

#endif // MESSAGE_H
