package com.tencent.thumbplayer.tcmedia.api.connection;
/* loaded from: classes6.dex */
public interface ITPPlayerConnection {
    int activeAllConnections();

    int activeConnection(int i);

    int addConnection(long j, TPPlayerConnectionNode tPPlayerConnectionNode, long j2, TPPlayerConnectionNode tPPlayerConnectionNode2);

    void deactiveAllConnections();

    void deactiveConnection(int i);

    void init();

    void removeConnection(int i);

    void uninit();
}
