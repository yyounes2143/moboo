.class Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;
.implements Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaBrowserImplBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;
    }
.end annotation


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwww:Landroid/os/Bundle;

.field public Wwwwwwwwwwwwwwwwwwwwww:Landroid/os/Bundle;

.field public Wwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field public Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Messenger;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserCompat$Subscription;",
            ">;"
        }
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Bundle;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/ComponentName;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;


# direct methods
.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, "UNKNOWN/"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_0
    const-string p0, "CONNECT_STATE_SUSPENDED"

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_1
    const-string p0, "CONNECT_STATE_CONNECTED"

    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_2
    const-string p0, "CONNECT_STATE_CONNECTING"

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_3
    const-string p0, "CONNECT_STATE_DISCONNECTED"

    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_4
    const-string p0, "CONNECT_STATE_DISCONNECTING"

    .line 46
    .line 47
    return-object p0
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/os/Messenger;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Messenger;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p2, p1, :cond_1

    .line 5
    .line 6
    iget p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return v0

    .line 14
    :cond_1
    :goto_0
    iget p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 15
    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    if-eq p1, v0, :cond_2

    .line 19
    .line 20
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/ComponentName;

    .line 21
    .line 22
    invoke-static {p1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Messenger;

    .line 26
    .line 27
    invoke-static {p1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    :cond_2
    const/4 p1, 0x0

    .line 34
    return p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/os/Messenger;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/ComponentName;

    .line 2
    .line 3
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    const-string v0, "onConnectFailed"

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/os/Messenger;Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    if-eq p1, v0, :cond_1

    .line 19
    .line 20
    iget p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 21
    .line 22
    invoke-static {p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->onConnectionFailed()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    iput v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    .line 15
    .line 16
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    .line 17
    .line 18
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Messenger;

    .line 19
    .line 20
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/os/Messenger;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 26
    .line 27
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 28
    .line 29
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/os/Messenger;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    const-string v0, "onConnect"

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/os/Messenger;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    iget p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 16
    .line 17
    invoke-static {p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 24
    .line 25
    iput-object p4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwww:Landroid/os/Bundle;

    .line 26
    .line 27
    const/4 p1, 0x3

    .line 28
    iput p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 29
    .line 30
    sget-boolean p1, Landroid/support/v4/media/MediaBrowserCompat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 35
    .line 36
    .line 37
    :cond_2
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->onConnected()V

    .line 40
    .line 41
    .line 42
    :try_start_0
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/collection/ArrayMap;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->entrySet()Ljava/util/Set;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-eqz p2, :cond_4

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    check-cast p2, Ljava/util/Map$Entry;

    .line 63
    .line 64
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    check-cast p3, Ljava/lang/String;

    .line 69
    .line 70
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    check-cast p2, Landroid/support/v4/media/MediaBrowserCompat$Subscription;

    .line 75
    .line 76
    invoke-virtual {p2}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object p4

    .line 80
    invoke-virtual {p2}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    const/4 v0, 0x0

    .line 85
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-ge v0, v1, :cond_3

    .line 90
    .line 91
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    .line 92
    .line 93
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    check-cast v2, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    .line 98
    .line 99
    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/IBinder;

    .line 100
    .line 101
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    check-cast v3, Landroid/os/Bundle;

    .line 106
    .line 107
    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Messenger;

    .line 108
    .line 109
    invoke-virtual {v1, p3, v2, v3, v4}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    add-int/lit8 v0, v0, 0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :catch_0
    :cond_4
    :goto_1
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/ComponentName;

    .line 2
    .line 3
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    .line 7
    .line 8
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    iget v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 17
    .line 18
    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    .line 22
    .line 23
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    .line 27
    .line 28
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Messenger;

    .line 32
    .line 33
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 37
    .line 38
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 3

    .line 1
    iget v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "connect() called while neigther disconnecting nor disconnected (state="

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 22
    .line 23
    invoke-static {v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, ")"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_1
    :goto_0
    const/4 v0, 0x2

    .line 44
    iput v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 45
    .line 46
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    .line 47
    .line 48
    new-instance v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$1;

    .line 49
    .line 50
    invoke-direct {v1, p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$1;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/os/Messenger;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Messenger;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "onLoadChildren"

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/os/Messenger;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-boolean p1, Landroid/support/v4/media/MediaBrowserCompat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/ComponentName;

    .line 15
    .line 16
    invoke-static {p1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/collection/ArrayMap;

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$Subscription;

    .line 26
    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    invoke-virtual {p1, p4}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_6

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    if-nez p4, :cond_4

    .line 38
    .line 39
    if-nez p3, :cond_3

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_3
    iput-object p5, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwww:Landroid/os/Bundle;

    .line 46
    .line 47
    invoke-virtual {p1, p2, p3}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/util/List;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwww:Landroid/os/Bundle;

    .line 51
    .line 52
    return-void

    .line 53
    :cond_4
    if-nez p3, :cond_5

    .line 54
    .line 55
    invoke-virtual {p1, p2, p4}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_5
    iput-object p5, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwww:Landroid/os/Bundle;

    .line 60
    .line 61
    invoke-virtual {p1, p2, p3, p4}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwww:Landroid/os/Bundle;

    .line 65
    .line 66
    :cond_6
    :goto_0
    return-void
.end method

.method public disconnect()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 3
    .line 4
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    .line 5
    .line 6
    new-instance v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$2;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$2;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "getSessionToken() called while not connected(state="

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ")"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0
.end method
