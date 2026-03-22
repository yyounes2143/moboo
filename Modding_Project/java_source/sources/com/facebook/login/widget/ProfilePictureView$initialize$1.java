package com.facebook.login.widget;

import com.facebook.Profile;
import com.facebook.ProfileTracker;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\b\n\u0018\u00002\u00020\u0001J#\u0010\u0006\u001a\u00020\u00052\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/facebook/login/widget/ProfilePictureView$initialize$1", "Lcom/facebook/ProfileTracker;", "Lcom/facebook/Profile;", "oldProfile", "currentProfile", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/Profile;Lcom/facebook/Profile;)V", "facebook-login_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ProfilePictureView$initialize$1 extends ProfileTracker {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ ProfilePictureView f7132Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // com.facebook.ProfileTracker
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Profile profile, @Nullable Profile profile2) {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        ProfilePictureView profilePictureView = this.f7132Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (profile2 == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = profile2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        profilePictureView.setProfileId(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        this.f7132Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(true);
    }
}
