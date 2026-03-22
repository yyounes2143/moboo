package org.jacoco.core.runtime;

import java.util.logging.Handler;
import java.util.logging.Level;
import java.util.logging.LogRecord;
import java.util.logging.Logger;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class LoggerRuntime extends AbstractRuntime {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f13559Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Integer.toHexString(hashCode());

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Logger f13558Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Handler f13557Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new RuntimeHandler();

    public final Logger Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Logger logger = Logger.getLogger("jacoco-runtime");
        logger.setUseParentHandlers(false);
        logger.setLevel(Level.ALL);
        return logger;
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public class RuntimeHandler extends Handler {
        public RuntimeHandler() {
        }

        @Override // java.util.logging.Handler
        public void close() throws SecurityException {
            LoggerRuntime.this.f13558Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.addHandler(LoggerRuntime.this.f13557Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }

        @Override // java.util.logging.Handler
        public void publish(LogRecord logRecord) {
            if (LoggerRuntime.this.f13559Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(logRecord.getMessage())) {
                LoggerRuntime.this.f13552Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(logRecord.getParameters());
            }
        }

        @Override // java.util.logging.Handler
        public void flush() {
        }
    }
}
