package com.google.firebase.sessions;

import java.util.Locale;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Singleton
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0001\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\tJ\b\u0010\u000b\u001a\u00020\fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/google/firebase/sessions/SessionGenerator;", "", "timeProvider", "Lcom/google/firebase/sessions/TimeProvider;", "uuidGenerator", "Lcom/google/firebase/sessions/UuidGenerator;", "<init>", "(Lcom/google/firebase/sessions/TimeProvider;Lcom/google/firebase/sessions/UuidGenerator;)V", "generateNewSession", "Lcom/google/firebase/sessions/SessionDetails;", "currentSession", "generateSessionId", "", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class SessionGenerator {
    @NotNull
    private final TimeProvider timeProvider;
    @NotNull
    private final UuidGenerator uuidGenerator;

    @Inject
    public SessionGenerator(@NotNull TimeProvider timeProvider, @NotNull UuidGenerator uuidGenerator) {
        this.timeProvider = timeProvider;
        this.uuidGenerator = uuidGenerator;
    }

    private final String generateSessionId() {
        return StringsKt.replace$default(this.uuidGenerator.next().toString(), "-", "", false, 4, (Object) null).toLowerCase(Locale.ROOT);
    }

    @NotNull
    public final SessionDetails generateNewSession(@Nullable SessionDetails sessionDetails) {
        String str;
        int i;
        String generateSessionId = generateSessionId();
        if (sessionDetails == null || (str = sessionDetails.getFirstSessionId()) == null) {
            str = generateSessionId;
        }
        if (sessionDetails != null) {
            i = sessionDetails.getSessionIndex() + 1;
        } else {
            i = 0;
        }
        return new SessionDetails(generateSessionId, str, i, this.timeProvider.currentTime().getUs());
    }
}
