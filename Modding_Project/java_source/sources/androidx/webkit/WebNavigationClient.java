package androidx.webkit;

import androidx.annotation.RequiresOptIn;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
/* compiled from: Proguard */
@ExperimentalNavigationCallback
/* loaded from: classes3.dex */
public interface WebNavigationClient {

    /* compiled from: Proguard */
    @Target({ElementType.METHOD, ElementType.TYPE, ElementType.FIELD})
    @RequiresOptIn(level = RequiresOptIn.Level.ERROR)
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes3.dex */
    public @interface ExperimentalNavigationCallback {
    }

    void onFirstContentfulPaint(Page page);

    void onNavigationCompleted(Navigation navigation);

    void onNavigationRedirected(Navigation navigation);

    void onNavigationStarted(Navigation navigation);

    void onPageDeleted(Page page);

    void onPageDomContentLoadedEventFired(Page page);

    void onPageLoadEventFired(Page page);
}
