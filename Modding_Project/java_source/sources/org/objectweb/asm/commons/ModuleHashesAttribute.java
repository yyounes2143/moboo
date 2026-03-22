package org.objectweb.asm.commons;

import java.util.List;
import org.objectweb.asm.Attribute;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class ModuleHashesAttribute extends Attribute {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public List<byte[]> f14126Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public List<String> f14127Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f14128Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public ModuleHashesAttribute(String str, List<String> list, List<byte[]> list2) {
        super("ModuleHashes");
        this.f14128Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f14127Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = list;
        this.f14126Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = list2;
    }

    public ModuleHashesAttribute() {
        this(null, null, null);
    }
}
