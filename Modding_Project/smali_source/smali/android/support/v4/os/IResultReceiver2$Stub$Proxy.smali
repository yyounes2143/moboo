.class Landroid/support/v4/os/IResultReceiver2$Stub$Proxy;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/support/v4/os/IResultReceiver2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/os/IResultReceiver2$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/IBinder;


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/os/IResultReceiver2$Stub$Proxy;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/IBinder;

    .line 2
    .line 3
    return-object v0
.end method
