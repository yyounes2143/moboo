package org.objectweb.asm.tree;

import java.util.ListIterator;
import java.util.NoSuchElementException;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class InsnList implements Iterable<AbstractInsnNode> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public AbstractInsnNode[] f14144Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public AbstractInsnNode f14145Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public AbstractInsnNode f14146Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f14147Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public final class InsnListIterator implements ListIterator {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public AbstractInsnNode f14149Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public AbstractInsnNode f14150Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public AbstractInsnNode f14151Wwwwwwwwwwwwwwwwwwwwwwwww;

        public InsnListIterator(int i) {
            if (i >= 0 && i <= InsnList.this.size()) {
                if (i == InsnList.this.size()) {
                    this.f14151Wwwwwwwwwwwwwwwwwwwwwwwww = null;
                    this.f14150Wwwwwwwwwwwwwwwwwwwwwwww = InsnList.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    return;
                }
                AbstractInsnNode Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = InsnList.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                for (int i2 = 0; i2 < i; i2++) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f14137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                }
                this.f14151Wwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                this.f14150Wwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f14138Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                return;
            }
            throw new IndexOutOfBoundsException();
        }

        @Override // java.util.ListIterator
        public void add(Object obj) {
            AbstractInsnNode abstractInsnNode = this.f14151Wwwwwwwwwwwwwwwwwwwwwwwww;
            if (abstractInsnNode != null) {
                InsnList.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(abstractInsnNode, (AbstractInsnNode) obj);
            } else {
                AbstractInsnNode abstractInsnNode2 = this.f14150Wwwwwwwwwwwwwwwwwwwwwwww;
                if (abstractInsnNode2 != null) {
                    InsnList.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(abstractInsnNode2, (AbstractInsnNode) obj);
                } else {
                    InsnList.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((AbstractInsnNode) obj);
                }
            }
            this.f14150Wwwwwwwwwwwwwwwwwwwwwwww = (AbstractInsnNode) obj;
            this.f14149Wwwwwwwwwwwwwwwwwwwwwww = null;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            if (this.f14151Wwwwwwwwwwwwwwwwwwwwwwwww != null) {
                return true;
            }
            return false;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            if (this.f14150Wwwwwwwwwwwwwwwwwwwwwwww != null) {
                return true;
            }
            return false;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public Object next() {
            AbstractInsnNode abstractInsnNode = this.f14151Wwwwwwwwwwwwwwwwwwwwwwwww;
            if (abstractInsnNode != null) {
                this.f14150Wwwwwwwwwwwwwwwwwwwwwwww = abstractInsnNode;
                this.f14151Wwwwwwwwwwwwwwwwwwwwwwwww = abstractInsnNode.f14137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                this.f14149Wwwwwwwwwwwwwwwwwwwwwww = abstractInsnNode;
                return abstractInsnNode;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            if (this.f14151Wwwwwwwwwwwwwwwwwwwwwwwww == null) {
                return InsnList.this.size();
            }
            InsnList insnList = InsnList.this;
            if (insnList.f14144Wwwwwwwwwwwwwwwwwwwwww == null) {
                insnList.f14144Wwwwwwwwwwwwwwwwwwwwww = insnList.Wwwwwwwwwwwwwwwwwwwwwwww();
            }
            return this.f14151Wwwwwwwwwwwwwwwwwwwwwwwww.f14136Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // java.util.ListIterator
        public Object previous() {
            AbstractInsnNode abstractInsnNode = this.f14150Wwwwwwwwwwwwwwwwwwwwwwww;
            if (abstractInsnNode != null) {
                this.f14151Wwwwwwwwwwwwwwwwwwwwwwwww = abstractInsnNode;
                this.f14150Wwwwwwwwwwwwwwwwwwwwwwww = abstractInsnNode.f14138Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                this.f14149Wwwwwwwwwwwwwwwwwwwwwww = abstractInsnNode;
                return abstractInsnNode;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            if (this.f14150Wwwwwwwwwwwwwwwwwwwwwwww == null) {
                return -1;
            }
            InsnList insnList = InsnList.this;
            if (insnList.f14144Wwwwwwwwwwwwwwwwwwwwww == null) {
                insnList.f14144Wwwwwwwwwwwwwwwwwwwwww = insnList.Wwwwwwwwwwwwwwwwwwwwwwww();
            }
            return this.f14150Wwwwwwwwwwwwwwwwwwwwwwww.f14136Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            AbstractInsnNode abstractInsnNode = this.f14149Wwwwwwwwwwwwwwwwwwwwwww;
            if (abstractInsnNode != null) {
                AbstractInsnNode abstractInsnNode2 = this.f14151Wwwwwwwwwwwwwwwwwwwwwwwww;
                if (abstractInsnNode == abstractInsnNode2) {
                    this.f14151Wwwwwwwwwwwwwwwwwwwwwwwww = abstractInsnNode2.f14137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                } else {
                    this.f14150Wwwwwwwwwwwwwwwwwwwwwwww = this.f14150Wwwwwwwwwwwwwwwwwwwwwwww.f14138Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                }
                InsnList.this.Wwwwwwwwwwwwwwwwwwwwwwwwww(abstractInsnNode);
                this.f14149Wwwwwwwwwwwwwwwwwwwwwww = null;
                return;
            }
            throw new IllegalStateException();
        }

        @Override // java.util.ListIterator
        public void set(Object obj) {
            AbstractInsnNode abstractInsnNode = this.f14149Wwwwwwwwwwwwwwwwwwwwwww;
            if (abstractInsnNode != null) {
                AbstractInsnNode abstractInsnNode2 = (AbstractInsnNode) obj;
                InsnList.this.Wwwwwwwwwwwwwwwwwwwwwwwww(abstractInsnNode, abstractInsnNode2);
                if (this.f14149Wwwwwwwwwwwwwwwwwwwwwww == this.f14150Wwwwwwwwwwwwwwwwwwwwwwww) {
                    this.f14150Wwwwwwwwwwwwwwwwwwwwwwww = abstractInsnNode2;
                    return;
                } else {
                    this.f14151Wwwwwwwwwwwwwwwwwwwwwwwww = abstractInsnNode2;
                    return;
                }
            }
            throw new IllegalStateException();
        }
    }

    public AbstractInsnNode[] Wwwwwwwwwwwwwwwwwwwwwwww() {
        AbstractInsnNode abstractInsnNode = this.f14146Wwwwwwwwwwwwwwwwwwwwwwww;
        AbstractInsnNode[] abstractInsnNodeArr = new AbstractInsnNode[this.f14147Wwwwwwwwwwwwwwwwwwwwwwwww];
        int i = 0;
        while (abstractInsnNode != null) {
            abstractInsnNodeArr[i] = abstractInsnNode;
            abstractInsnNode.f14136Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            abstractInsnNode = abstractInsnNode.f14137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            i++;
        }
        return abstractInsnNodeArr;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwww(AbstractInsnNode abstractInsnNode, AbstractInsnNode abstractInsnNode2) {
        AbstractInsnNode abstractInsnNode3 = abstractInsnNode.f14137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        abstractInsnNode2.f14137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = abstractInsnNode3;
        if (abstractInsnNode3 != null) {
            abstractInsnNode3.f14138Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = abstractInsnNode2;
        } else {
            this.f14145Wwwwwwwwwwwwwwwwwwwwwww = abstractInsnNode2;
        }
        AbstractInsnNode abstractInsnNode4 = abstractInsnNode.f14138Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        abstractInsnNode2.f14138Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = abstractInsnNode4;
        if (abstractInsnNode4 != null) {
            abstractInsnNode4.f14137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = abstractInsnNode2;
        } else {
            this.f14146Wwwwwwwwwwwwwwwwwwwwwwww = abstractInsnNode2;
        }
        AbstractInsnNode[] abstractInsnNodeArr = this.f14144Wwwwwwwwwwwwwwwwwwwwww;
        if (abstractInsnNodeArr != null) {
            int i = abstractInsnNode.f14136Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            abstractInsnNodeArr[i] = abstractInsnNode2;
            abstractInsnNode2.f14136Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        } else {
            abstractInsnNode2.f14136Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;
        }
        abstractInsnNode.f14136Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = -1;
        abstractInsnNode.f14138Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        abstractInsnNode.f14137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwww(AbstractInsnNode abstractInsnNode) {
        this.f14147Wwwwwwwwwwwwwwwwwwwwwwwww--;
        AbstractInsnNode abstractInsnNode2 = abstractInsnNode.f14137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        AbstractInsnNode abstractInsnNode3 = abstractInsnNode.f14138Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (abstractInsnNode2 == null) {
            if (abstractInsnNode3 == null) {
                this.f14146Wwwwwwwwwwwwwwwwwwwwwwww = null;
                this.f14145Wwwwwwwwwwwwwwwwwwwwwww = null;
            } else {
                abstractInsnNode3.f14137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
                this.f14145Wwwwwwwwwwwwwwwwwwwwwww = abstractInsnNode3;
            }
        } else if (abstractInsnNode3 == null) {
            this.f14146Wwwwwwwwwwwwwwwwwwwwwwww = abstractInsnNode2;
            abstractInsnNode2.f14138Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        } else {
            abstractInsnNode3.f14137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = abstractInsnNode2;
            abstractInsnNode2.f14138Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = abstractInsnNode3;
        }
        this.f14144Wwwwwwwwwwwwwwwwwwwwww = null;
        abstractInsnNode.f14136Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = -1;
        abstractInsnNode.f14138Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        abstractInsnNode.f14137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
    }

    public ListIterator<AbstractInsnNode> Wwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        return new InsnListIterator(i);
    }

    @Override // java.lang.Iterable
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public ListIterator<AbstractInsnNode> iterator() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwww(0);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(AbstractInsnNode abstractInsnNode, AbstractInsnNode abstractInsnNode2) {
        this.f14147Wwwwwwwwwwwwwwwwwwwwwwwww++;
        AbstractInsnNode abstractInsnNode3 = abstractInsnNode.f14138Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (abstractInsnNode3 == null) {
            this.f14146Wwwwwwwwwwwwwwwwwwwwwwww = abstractInsnNode2;
        } else {
            abstractInsnNode3.f14137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = abstractInsnNode2;
        }
        abstractInsnNode.f14138Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = abstractInsnNode2;
        abstractInsnNode2.f14137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = abstractInsnNode;
        abstractInsnNode2.f14138Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = abstractInsnNode3;
        this.f14144Wwwwwwwwwwwwwwwwwwwwww = null;
        abstractInsnNode2.f14136Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AbstractInsnNode abstractInsnNode, AbstractInsnNode abstractInsnNode2) {
        this.f14147Wwwwwwwwwwwwwwwwwwwwwwwww++;
        AbstractInsnNode abstractInsnNode3 = abstractInsnNode.f14137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (abstractInsnNode3 == null) {
            this.f14145Wwwwwwwwwwwwwwwwwwwwwww = abstractInsnNode2;
        } else {
            abstractInsnNode3.f14138Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = abstractInsnNode2;
        }
        abstractInsnNode.f14137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = abstractInsnNode2;
        abstractInsnNode2.f14137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = abstractInsnNode3;
        abstractInsnNode2.f14138Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = abstractInsnNode;
        this.f14144Wwwwwwwwwwwwwwwwwwwwww = null;
        abstractInsnNode2.f14136Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AbstractInsnNode abstractInsnNode) {
        if (this.f14144Wwwwwwwwwwwwwwwwwwwwww == null) {
            this.f14144Wwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwww();
        }
        return abstractInsnNode.f14136Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public AbstractInsnNode Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f14145Wwwwwwwwwwwwwwwwwwwwwww;
    }

    public AbstractInsnNode Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f14146Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AbstractInsnNode abstractInsnNode) {
        this.f14147Wwwwwwwwwwwwwwwwwwwwwwwww++;
        AbstractInsnNode abstractInsnNode2 = this.f14145Wwwwwwwwwwwwwwwwwwwwwww;
        if (abstractInsnNode2 == null) {
            this.f14146Wwwwwwwwwwwwwwwwwwwwwwww = abstractInsnNode;
            this.f14145Wwwwwwwwwwwwwwwwwwwwwww = abstractInsnNode;
        } else {
            abstractInsnNode2.f14137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = abstractInsnNode;
            abstractInsnNode.f14138Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = abstractInsnNode2;
        }
        this.f14145Wwwwwwwwwwwwwwwwwwwwwww = abstractInsnNode;
        this.f14144Wwwwwwwwwwwwwwwwwwwwww = null;
        abstractInsnNode.f14136Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;
    }

    public int size() {
        return this.f14147Wwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
