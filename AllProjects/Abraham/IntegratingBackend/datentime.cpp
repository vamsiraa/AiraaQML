#include "datentime.h"

DateNTime::DateNTime(QObject *parent)
    : QObject{parent}
{
    m_dTime.setInterval(1000);
    connect(&m_dTime, SIGNAL(timeout()),this,SLOT(onTimeUpdated()));
    m_dTime.start();
}

QString DateNTime::time() const
{
    return m_time;
}

void DateNTime::setTime(QString newTime)
{
    if (m_time == newTime)
        return;
    m_time = newTime;
    emit timeChanged();
}

void DateNTime::onTimeUpdated()
{
    setTime(QDateTime::currentDateTime().toString("dddd, d MMMM yy \n        hh:mm:ss"));
}
