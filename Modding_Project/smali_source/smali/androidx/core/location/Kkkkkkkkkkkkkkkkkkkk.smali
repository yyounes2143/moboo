.class public final synthetic Landroidx/core/location/Kkkkkkkkkkkkkkkkkkkk;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/Executor;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/core/location/Kkkkkkkkkkkkkkkkkkkk;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/core/location/Kkkkkkkkkkkkkkkkkkkk;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/location/Kkkkkkkkkkkkkkkkkkkk;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/core/location/Kkkkkkkkkkkkkkkkkkkk;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;Ljava/util/concurrent/Executor;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
