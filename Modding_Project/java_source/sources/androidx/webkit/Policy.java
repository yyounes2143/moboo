package androidx.webkit;

import androidx.annotation.RestrictTo;
import androidx.webkit.WebViewBuilder;
import java.util.ArrayList;
import java.util.List;
import org.chromium.support_lib_boundary.WebViewBuilderBoundaryInterface;
/* compiled from: Proguard */
@WebViewBuilder.Experimental
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class Policy {
    private final List<ConfigRunnable> mBehaviors;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class Builder {
        final List<ConfigRunnable> mBehaviors = new ArrayList();

        public Policy build() {
            return new Policy(this.mBehaviors);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface ConfigRunnable {
        void configure(WebViewBuilderBoundaryInterface.Config config) throws WebViewBuilderException;
    }

    public void configure(WebViewBuilderBoundaryInterface.Config config) throws WebViewBuilderException {
        for (ConfigRunnable configRunnable : this.mBehaviors) {
            configRunnable.configure(config);
        }
    }

    private Policy(List<ConfigRunnable> list) {
        this.mBehaviors = list;
    }
}
