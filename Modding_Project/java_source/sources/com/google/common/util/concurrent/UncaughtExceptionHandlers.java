package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.annotations.VisibleForTesting;
import java.io.PrintStream;
import java.lang.Thread;
import java.util.Locale;
import java.util.logging.Level;
/* compiled from: Proguard */
@J2ktIncompatible
@ElementTypesAreNonnullByDefault
@GwtIncompatible
/* loaded from: classes5.dex */
public final class UncaughtExceptionHandlers {

    /* compiled from: Proguard */
    @VisibleForTesting
    /* loaded from: classes5.dex */
    public static final class Exiter implements Thread.UncaughtExceptionHandler {
        private static final LazyLogger logger = new LazyLogger(Exiter.class);
        private final Runtime runtime;

        public Exiter(Runtime runtime) {
            this.runtime = runtime;
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            try {
                logger.get().log(Level.SEVERE, String.format(Locale.ROOT, "Caught an exception in %s.  Shutting down.", thread), th);
            } catch (Throwable th2) {
                try {
                    PrintStream printStream = System.err;
                    th.getMessage();
                    printStream.getClass();
                    PrintStream printStream2 = System.err;
                    th2.getMessage();
                    printStream2.getClass();
                } finally {
                    this.runtime.exit(1);
                }
            }
        }
    }

    private UncaughtExceptionHandlers() {
    }

    public static Thread.UncaughtExceptionHandler systemExit() {
        return new Exiter(Runtime.getRuntime());
    }
}
