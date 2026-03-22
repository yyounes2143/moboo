package kotlinx.serialization.json.internal;

import kotlin.Metadata;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0010\t\n\u0002\u0010\u0005\n\u0002\u0010\n\n\u0000\b\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\fH\u0016J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\rH\u0016J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000eH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lkotlinx/serialization/json/internal/ComposerForUnsignedNumbers;", "Lkotlinx/serialization/json/internal/Composer;", "writer", "Lkotlinx/serialization/json/internal/InternalJsonWriter;", "forceQuoting", "", "<init>", "(Lkotlinx/serialization/json/internal/InternalJsonWriter;Z)V", "print", "", "v", "", "", "", "", "kotlinx-serialization-json"}, k = 1, mv = {2, 0, 0}, xi = 48)
@SuppressAnimalSniffer
/* loaded from: classes7.dex */
public final class ComposerForUnsignedNumbers extends Composer {
    private final boolean forceQuoting;

    public ComposerForUnsignedNumbers(@NotNull InternalJsonWriter internalJsonWriter, boolean z) {
        super(internalJsonWriter);
        this.forceQuoting = z;
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void print(int i) {
        boolean z = this.forceQuoting;
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(UInt.m533constructorimpl(i));
        if (z) {
            printQuoted(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        } else {
            print(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void print(long j) {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
        boolean z = this.forceQuoting;
        long m612constructorimpl = ULong.m612constructorimpl(j);
        if (z) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = kotlinx.serialization.json.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(m612constructorimpl, 10);
            printQuoted(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
            return;
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = kotlinx.serialization.json.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(m612constructorimpl, 10);
        print(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void print(byte b) {
        boolean z = this.forceQuoting;
        String m500toStringimpl = UByte.m500toStringimpl(UByte.m456constructorimpl(b));
        if (z) {
            printQuoted(m500toStringimpl);
        } else {
            print(m500toStringimpl);
        }
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void print(short s) {
        boolean z = this.forceQuoting;
        String m763toStringimpl = UShort.m763toStringimpl(UShort.m719constructorimpl(s));
        if (z) {
            printQuoted(m763toStringimpl);
        } else {
            print(m763toStringimpl);
        }
    }
}
