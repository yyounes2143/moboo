package androidx.window.embedding;

import android.content.Context;
import androidx.annotation.XmlRes;
import com.unity3d.services.core.fid.Constants;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.SetsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0005\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u000f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u0006\u0010\t\u001a\u00020\u0006J\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\b0\u000bJ\u000e\u0010\f\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u0014\u0010\r\u001a\u00020\u00062\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\b0\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Landroidx/window/embedding/RuleController;", "", "embeddingBackend", "Landroidx/window/embedding/EmbeddingBackend;", "(Landroidx/window/embedding/EmbeddingBackend;)V", "addRule", "", "rule", "Landroidx/window/embedding/EmbeddingRule;", "clearRules", "getRules", "", "removeRule", "setRules", "rules", "Companion", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class RuleController {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final EmbeddingBackend embeddingBackend;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J \u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\n\u001a\u00020\u000bH\u0007¨\u0006\f"}, d2 = {"Landroidx/window/embedding/RuleController$Companion;", "", "()V", Constants.GET_INSTANCE, "Landroidx/window/embedding/RuleController;", "context", "Landroid/content/Context;", "parseRules", "", "Landroidx/window/embedding/EmbeddingRule;", "staticRuleResourceId", "", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final RuleController getInstance(@NotNull Context context) {
            return new RuleController(EmbeddingBackend.Companion.getInstance(context.getApplicationContext()));
        }

        @JvmStatic
        @NotNull
        public final Set<EmbeddingRule> parseRules(@NotNull Context context, @XmlRes int i) {
            Set<EmbeddingRule> parseRules$window_release = RuleParser.INSTANCE.parseRules$window_release(context.getApplicationContext(), i);
            if (parseRules$window_release == null) {
                return SetsKt.emptySet();
            }
            return parseRules$window_release;
        }

        private Companion() {
        }
    }

    public RuleController(@NotNull EmbeddingBackend embeddingBackend) {
        this.embeddingBackend = embeddingBackend;
    }

    @JvmStatic
    @NotNull
    public static final RuleController getInstance(@NotNull Context context) {
        return Companion.getInstance(context);
    }

    @JvmStatic
    @NotNull
    public static final Set<EmbeddingRule> parseRules(@NotNull Context context, @XmlRes int i) {
        return Companion.parseRules(context, i);
    }

    public final void addRule(@NotNull EmbeddingRule embeddingRule) {
        this.embeddingBackend.addRule(embeddingRule);
    }

    public final void clearRules() {
        this.embeddingBackend.setRules(SetsKt.emptySet());
    }

    @NotNull
    public final Set<EmbeddingRule> getRules() {
        return this.embeddingBackend.getRules();
    }

    public final void removeRule(@NotNull EmbeddingRule embeddingRule) {
        this.embeddingBackend.removeRule(embeddingRule);
    }

    public final void setRules(@NotNull Set<? extends EmbeddingRule> set) {
        this.embeddingBackend.setRules(set);
    }
}
