.class public final synthetic Landroidx/core/location/Wwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:Landroid/location/GnssMeasurementsEvent;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/Executor;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;Ljava/util/concurrent/Executor;Landroid/location/GnssMeasurementsEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/core/location/Wwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/core/location/Wwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/core/location/Wwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/location/GnssMeasurementsEvent;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/core/location/Wwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/core/location/Wwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/core/location/Wwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/location/GnssMeasurementsEvent;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;Ljava/util/concurrent/Executor;Landroid/location/GnssMeasurementsEvent;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
