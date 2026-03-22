package androidx.webkit;

import androidx.annotation.UiThread;
import java.util.List;
/* compiled from: Proguard */
@UiThread
/* loaded from: classes3.dex */
public interface ProfileStore {
    boolean deleteProfile(String str);

    List<String> getAllProfileNames();

    Profile getOrCreateProfile(String str);

    Profile getProfile(String str);
}
