package com.tencent.thumbplayer.tcmedia.utils;

import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantReadWriteLock;
/* loaded from: classes6.dex */
public class m extends ReentrantReadWriteLock {

    /* renamed from: a  reason: collision with root package name */
    private Condition f10697a = writeLock().newCondition();
}
