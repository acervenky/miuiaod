.class public final synthetic Lcom/miui/aod/-$$Lambda$AnalyticalDataCollectorJobService$0CzoKcLQ5v0zNr7E1zNbgAkZYUk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/aod/AnalyticalDataCollectorJobService;

.field private final synthetic f$1:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/aod/AnalyticalDataCollectorJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/aod/-$$Lambda$AnalyticalDataCollectorJobService$0CzoKcLQ5v0zNr7E1zNbgAkZYUk;->f$0:Lcom/miui/aod/AnalyticalDataCollectorJobService;

    iput-object p2, p0, Lcom/miui/aod/-$$Lambda$AnalyticalDataCollectorJobService$0CzoKcLQ5v0zNr7E1zNbgAkZYUk;->f$1:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/-$$Lambda$AnalyticalDataCollectorJobService$0CzoKcLQ5v0zNr7E1zNbgAkZYUk;->f$0:Lcom/miui/aod/AnalyticalDataCollectorJobService;

    iget-object p0, p0, Lcom/miui/aod/-$$Lambda$AnalyticalDataCollectorJobService$0CzoKcLQ5v0zNr7E1zNbgAkZYUk;->f$1:Landroid/app/job/JobParameters;

    invoke-static {v0, p0}, Lcom/miui/aod/AnalyticalDataCollectorJobService;->lambda$onStartJob$0(Lcom/miui/aod/AnalyticalDataCollectorJobService;Landroid/app/job/JobParameters;)V

    return-void
.end method
