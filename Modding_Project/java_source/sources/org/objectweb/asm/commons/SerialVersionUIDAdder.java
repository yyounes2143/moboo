package org.objectweb.asm.commons;

import org.objectweb.asm.ClassVisitor;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class SerialVersionUIDAdder extends ClassVisitor {

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class Item implements Comparable<Item> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f14131Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f14132Wwwwwwwwwwwwwwwwwwwwwwwww;

        @Override // java.lang.Comparable
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public int compareTo(Item item) {
            int compareTo = this.f14132Wwwwwwwwwwwwwwwwwwwwwwwww.compareTo(item.f14132Wwwwwwwwwwwwwwwwwwwwwwwww);
            if (compareTo == 0) {
                return this.f14131Wwwwwwwwwwwwwwwwwwwwwwww.compareTo(item.f14131Wwwwwwwwwwwwwwwwwwwwwwww);
            }
            return compareTo;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Item) || compareTo((Item) obj) != 0) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return this.f14132Wwwwwwwwwwwwwwwwwwwwwwwww.hashCode() ^ this.f14131Wwwwwwwwwwwwwwwwwwwwwwww.hashCode();
        }
    }
}
