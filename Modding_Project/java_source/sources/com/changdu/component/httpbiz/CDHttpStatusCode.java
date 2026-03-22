package com.changdu.component.httpbiz;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/changdu/component/httpbiz/CDHttpStatusCode;", "", "()V", "CANCELED", "", "INTERNAL_ERROR", "NEED_CHARGE", "NEWBIE_FREE", "PARSE_RESPONSE_ERROR", "SUCCESS", "UNKNOWN", "http-biz_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CDHttpStatusCode {
    public static final int CANCELED = -2;
    @NotNull
    public static final CDHttpStatusCode INSTANCE = new CDHttpStatusCode();
    public static final int INTERNAL_ERROR = -3;
    public static final int NEED_CHARGE = 10011;
    public static final int NEWBIE_FREE = 10015;
    public static final int PARSE_RESPONSE_ERROR = -4;
    public static final int SUCCESS = 10000;
    public static final int UNKNOWN = -1;

    private CDHttpStatusCode() {
    }
}
