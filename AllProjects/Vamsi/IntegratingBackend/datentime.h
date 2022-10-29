#ifndef DATENTIME_H
#define DATENTIME_H

#include <QObject>
#include <QTime>
#include <QTimer>

class DateNTime : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString time READ time WRITE setTime NOTIFY timeChanged)
public:
    explicit DateNTime(QObject *parent = nullptr);

    QString time() const;
    void setTime(QString newTime);
public slots:
    void onTimeUpdated();

signals:

    void timeChanged();
private:
    QString m_time = 0;
    QTimer m_dTime;
};

#endif // DATENTIME_H
