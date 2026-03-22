package com.tencent.thumbplayer.tcmedia.adapter.strategy;

import com.tencent.thumbplayer.tcmedia.adapter.strategy.utils.TPStrategyUtils;
/* loaded from: classes6.dex */
public abstract class b implements a {

    /* renamed from: a  reason: collision with root package name */
    protected com.tencent.thumbplayer.tcmedia.adapter.strategy.a.a f10546a;

    public b(com.tencent.thumbplayer.tcmedia.adapter.strategy.a.a aVar) {
        this.f10546a = aVar;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.strategy.a
    public int a(com.tencent.thumbplayer.tcmedia.adapter.b bVar) {
        int a2 = this.f10546a.a();
        if (a2 == 0) {
            if (b(bVar)) {
                return 2;
            }
            return TPStrategyUtils.isSystemPlayerEnable() ? 1 : 0;
        } else if (a2 == 1) {
            return b(bVar) ? 2 : 0;
        } else if (a2 == 2) {
            if (b(bVar)) {
                return 2;
            }
            return TPStrategyUtils.isSystemPlayerEnable() ? 1 : 0;
        } else if (a2 == 3) {
            return c(bVar) ? 1 : 0;
        } else if (a2 != 4) {
            return 0;
        } else {
            if (c(bVar)) {
                return 1;
            }
            return TPStrategyUtils.isThumbPlayerEnable() ? 2 : 0;
        }
    }

    public boolean b(com.tencent.thumbplayer.tcmedia.adapter.b bVar) {
        if (TPStrategyUtils.isTVPlatform()) {
            return TPStrategyUtils.isThumbPlayerEnable();
        }
        if (TPStrategyUtils.isThumbPlayerEnable() && TPStrategyUtils.enablePlayByThumbPlayer(bVar)) {
            return true;
        }
        return false;
    }

    public boolean c(com.tencent.thumbplayer.tcmedia.adapter.b bVar) {
        if (TPStrategyUtils.isTVPlatform()) {
            return true;
        }
        if (TPStrategyUtils.isSystemPlayerEnable() && TPStrategyUtils.enablePlayBySystemPlayer(bVar)) {
            return true;
        }
        return false;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.strategy.a
    public int a(com.tencent.thumbplayer.tcmedia.adapter.b bVar, com.tencent.thumbplayer.tcmedia.adapter.strategy.a.b bVar2) {
        int a2 = this.f10546a.a();
        if (bVar2 == null || bVar2.a() != 0) {
            if (a(bVar2)) {
                if (a2 != 0) {
                    return a2 != 2 ? (a2 == 4 && bVar2 != null && bVar2.a() == 1 && b(bVar)) ? 2 : 0 : (bVar2 != null && bVar2.a() == 2 && c(bVar)) ? 1 : 0;
                } else if (bVar2 != null && bVar2.a() == 1) {
                    return b(bVar) ? 2 : 0;
                } else if (bVar2 != null && bVar2.a() == 2 && c(bVar)) {
                    return 1;
                }
                return 0;
            }
            return 0;
        }
        return a(bVar);
    }

    public boolean a(com.tencent.thumbplayer.tcmedia.adapter.strategy.a.b bVar) {
        return false;
    }

    @Override // com.tencent.thumbplayer.tcmedia.adapter.strategy.a
    public int[] a() {
        int b = this.f10546a.b();
        if (b != 0) {
            if (b != 1) {
                if (b != 2) {
                    if (b != 3) {
                        if (b != 4) {
                            return null;
                        }
                        return new int[]{101, 102};
                    }
                    return new int[]{101};
                }
                return new int[]{102, 101};
            }
            return new int[]{102};
        }
        return new int[]{102, 101};
    }
}
