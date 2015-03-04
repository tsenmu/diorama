// #if defined(Q_WS_X11)
// #include <GL/glx.h>
// #endif
#include <QtGui/QApplication>
#include <GL/glut.h>

int main(int argc, char *argv[])
{
// #if defined(Q_WS_X11)
//     XInitThreads();
// #endif

    QCoreApplication::setOrganizationName("Max Planck Institute for Informatics");
    QCoreApplication::setOrganizationDomain("mpi-inf.mpg.de");
    QCoreApplication::setApplicationName("Diorama");

    QString filename;
    if(argc > 1)
        filename = argv[1];

    // TODO: This is needed for glut sometimes. Is this the best place to put this? Can this be elsewhere?    
    glutInit(&argc, argv);
    QApplication a(argc, argv);
    // Minerva w(filename);
    // w.show();
    return a.exec();
}
