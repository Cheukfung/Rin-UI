import platform
import sys

from PySide6.QtGui import QIcon
from PySide6.QtWidgets import QApplication
from datetime import datetime

import RinUI
from RinUI import RinUIWindow


class Gallery(RinUIWindow):
    def __init__(self):
        super().__init__("gallery.qml")
        self.setProperty("title", f"RinUI Gallery {datetime.now().year}")  # 前后端交互示例


if __name__ == '__main__':
    print(RinUI.__file__)
    app = QApplication(sys.argv)
    app.setWindowIcon(QIcon("../RinUI/assets/img/default_app_icon.png"))
    gallery = Gallery()
    app.exec()
    # app = QGuiApplication([])

    # 创建 QML 引擎
    # engine = QQmlApplicationEngine()
    # # engine.addImportPath(str(Path(__file__).parent.parent / "RinUI"))
    # print(engine.importPathList())
    #
    # # 加载 QML 文件
    # engine.load("gallery.qml")
    #
    #
    # # 启动应用
    # app.exec()
    # create_qml_app("gallery.qml")
