.class public Lcom/applovin/impl/b0;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private final a:Landroid/hardware/SensorManager;

.field private b:Landroid/os/Handler;

.field private final c:Z


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/k;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/applovin/impl/sdk/k;->o()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "sensor"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/hardware/SensorManager;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/applovin/impl/b0;->a:Landroid/hardware/SensorManager;

    .line 17
    .line 18
    sget-object v0, Lcom/applovin/impl/l4;->Y:Lcom/applovin/impl/l4;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput-boolean p1, p0, Lcom/applovin/impl/b0;->c:Z

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    new-instance p1, Landroid/os/HandlerThread;

    .line 35
    .line 36
    const-string v0, "AppLovinSdk:background_sensor_manager"

    .line 37
    .line 38
    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 42
    .line 43
    .line 44
    new-instance v0, Landroid/os/Handler;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/applovin/impl/b0;->b:Landroid/os/Handler;

    .line 54
    .line 55
    :cond_0
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/applovin/impl/b0;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/b0;->a(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/applovin/impl/b0;Landroid/hardware/SensorEventListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/applovin/impl/b0;->a(Landroid/hardware/SensorEventListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic a(Landroid/hardware/SensorEventListener;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/applovin/impl/b0;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method private synthetic a(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/b0;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/applovin/impl/b0;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    return-void
.end method


# virtual methods
.method public a(I)Landroid/hardware/Sensor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/b0;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/hardware/SensorEventListener;)V
    .locals 2

    .line 4
    iget-boolean v0, p0, Lcom/applovin/impl/b0;->c:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/applovin/impl/b0;->b:Landroid/os/Handler;

    new-instance v1, Lcom/applovin/impl/Wwwwwwwwwwwwwwwwwwwwwwwwww;

    invoke-direct {v1, p0, p1}, Lcom/applovin/impl/Wwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/applovin/impl/b0;Landroid/hardware/SensorEventListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/b0;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method public b(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/b0;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/b0;->b:Landroid/os/Handler;

    new-instance v1, Lcom/applovin/impl/Wwwwwwwwwwwwwwwwwwwwwwwww;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/applovin/impl/Wwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/applovin/impl/b0;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/b0;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method
