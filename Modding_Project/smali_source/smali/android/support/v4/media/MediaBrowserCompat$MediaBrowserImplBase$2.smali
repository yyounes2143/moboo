.class Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->disconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$2;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$2;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    .line 2
    .line 3
    iget-object v1, v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Messenger;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$2;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    .line 14
    .line 15
    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/ComponentName;

    .line 16
    .line 17
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$2;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    .line 21
    .line 22
    iget v1, v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 25
    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$2;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    .line 30
    .line 31
    iput v1, v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 32
    .line 33
    :cond_1
    sget-boolean v0, Landroid/support/v4/media/MediaBrowserCompat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$2;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 40
    .line 41
    .line 42
    :cond_2
    return-void
.end method
