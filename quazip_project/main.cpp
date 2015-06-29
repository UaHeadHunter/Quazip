#include <QCoreApplication>
#include "JlCompress.h"
#include <QDebug>

bool CompressDir(QString pZipName, QString pDirectory)
{
    return JlCompress::compressDir(pZipName, pDirectory);
}

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    QString zipName = "D:\\my.zip";
    QString directory = "D:\\test";
    if(CompressDir(zipName, directory))
        qDebug() << "OK" << endl;
    else
        qDebug() << "Failed" << endl;
    //return a.exec();

}
