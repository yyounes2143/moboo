package com.tekartik.sqflite;

import com.tencent.vod.flutter.FTXEvent;
import io.flutter.plugin.common.MethodCall;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class LogLevel {
    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        if (i >= 2) {
            return true;
        }
        return false;
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        if (i >= 1) {
            return true;
        }
        return false;
    }

    public static Integer Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodCall methodCall) {
        return (Integer) methodCall.argument(FTXEvent.EVENT_LOG_LEVEL);
    }
}
