package org.chromium.support_lib_boundary;

import android.content.Context;
import android.webkit.WebView;
import j$.util.function.Consumer$CC;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import org.jspecify.annotations.NullMarked;
/* compiled from: Proguard */
@NullMarked
/* loaded from: classes7.dex */
public interface WebViewBuilderBoundaryInterface {

    /* compiled from: Proguard */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes7.dex */
    public @interface Baseline {
        public static final int DEFAULT = 0;
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class Config implements Consumer<BiConsumer<Integer, Object>> {
        public int baseline = 0;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public List<Object> f13480Wwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public List<String> f13479Wwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public List<List<String>> f13478Wwwwwwwwwwwwwwwwwwwwwww = new ArrayList();

        public void addJavascriptInterface(Object obj, String str, List<String> list) {
            this.f13480Wwwwwwwwwwwwwwwwwwwwwwwww.add(obj);
            this.f13479Wwwwwwwwwwwwwwwwwwwwwwww.add(str);
            this.f13478Wwwwwwwwwwwwwwwwwwwwwww.add(list);
        }

        public /* synthetic */ Consumer andThen(Consumer consumer) {
            return Consumer$CC.$default$andThen(this, consumer);
        }

        @Override // java.util.function.Consumer
        public void accept(BiConsumer<Integer, Object> biConsumer) {
            biConsumer.accept(0, Integer.valueOf(this.baseline));
            biConsumer.accept(1, new Object[]{this.f13480Wwwwwwwwwwwwwwwwwwwwwwwww, this.f13479Wwwwwwwwwwwwwwwwwwwwwwww, this.f13478Wwwwwwwwwwwwwwwwwwwwwww});
        }
    }

    /* compiled from: Proguard */
    @Target({ElementType.TYPE_USE})
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes7.dex */
    public @interface ConfigField {
        public static final int BASELINE = 0;
        public static final int JAVASCRIPT_INTERFACE = 1;
    }

    WebView build(Context context, Consumer<BiConsumer<Integer, Object>> consumer);
}
