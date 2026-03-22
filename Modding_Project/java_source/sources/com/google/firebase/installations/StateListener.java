package com.google.firebase.installations;

import com.google.firebase.installations.local.PersistedInstallationEntry;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
interface StateListener {
    boolean onException(Exception exc);

    boolean onStateReached(PersistedInstallationEntry persistedInstallationEntry);
}
