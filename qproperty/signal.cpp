#include <QTimer>

class Message: public QObject{
    Q_OBJECT
    Q_PROPERTY(QString author READ author WRITE setAuthor NOTIFY authorChanged )

public:
    QString author() const{
        return m_author;
    }
    void setAuthotr(const QString &a){
        m_author=QString("%1,world").arg(a);
        emit authorChanged();
    }

signals:
    void authorChanged();


private:
    QString m_author;
};
