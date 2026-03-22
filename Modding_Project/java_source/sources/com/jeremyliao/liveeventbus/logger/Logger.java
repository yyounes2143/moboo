package com.jeremyliao.liveeventbus.logger;

import java.util.logging.Level;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public interface Logger {
    void log(Level level, String str);

    void log(Level level, String str, Throwable th);
}
