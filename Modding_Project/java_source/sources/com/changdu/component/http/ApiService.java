package com.changdu.component.http;

import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.DELETE;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.Headers;
import retrofit2.http.Multipart;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Part;
import retrofit2.http.PartMap;
import retrofit2.http.QueryMap;
import retrofit2.http.Streaming;
import retrofit2.http.Url;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\bf\u0018\u00002\u00020\u0001J.\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u00062\u0014\b\u0001\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\bH'J\u0018\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\n\u001a\u00020\u0006H'J\u0018\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0006H'J.\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u00062\u0014\b\u0001\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\bH'J\"\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\r\u001a\u00020\u0001H'J\"\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u000e\u001a\u00020\u000fH'J\"\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0011\u001a\u00020\u000fH'J.\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u00062\u0014\b\u0001\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\bH'J.\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u00062\u0014\b\u0001\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\bH'J\"\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\r\u001a\u00020\u0001H'J,\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\n\u001a\u00020\u00062\b\b\u0001\u0010\u0016\u001a\u00020\u000f2\b\b\u0001\u0010\u0017\u001a\u00020\u0018H'J(\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u00062\u000e\b\u0001\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00180\u001bH'J.\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u00062\u0014\b\u0001\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000f0\bH'¨\u0006\u001c"}, d2 = {"Lcom/changdu/component/http/ApiService;", "", "delete", "Lretrofit2/Call;", "Lokhttp3/ResponseBody;", "url", "", "maps", "", "downloadFile", "fileUrl", "get", "postBody", "bodyObject", "body", "Lokhttp3/RequestBody;", "postJson", "jsonBody", "postWithFormUrlEncoded", "put", "putBody", "uploadFile", "description", "file", "Lokhttp3/MultipartBody$Part;", "uploadFiles", "parts", "", "http_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public interface ApiService {
    @DELETE
    @NotNull
    Call<ResponseBody> delete(@Url @NotNull String str, @QueryMap @NotNull Map<String, String> map);

    @Streaming
    @GET
    @NotNull
    Call<ResponseBody> downloadFile(@Url @NotNull String str);

    @GET
    @NotNull
    Call<ResponseBody> get(@Url @NotNull String str);

    @GET
    @NotNull
    Call<ResponseBody> get(@Url @NotNull String str, @QueryMap @NotNull Map<String, String> map);

    @POST
    @NotNull
    Call<ResponseBody> postBody(@Url @NotNull String str, @Body @NotNull Object obj);

    @POST
    @NotNull
    Call<ResponseBody> postBody(@Url @NotNull String str, @Body @NotNull RequestBody requestBody);

    @Headers({"Content-Type: application/json", "Accept: application/json"})
    @POST
    @NotNull
    Call<ResponseBody> postJson(@Url @NotNull String str, @Body @NotNull RequestBody requestBody);

    @FormUrlEncoded
    @POST
    @NotNull
    Call<ResponseBody> postWithFormUrlEncoded(@Url @NotNull String str, @FieldMap @NotNull Map<String, String> map);

    @PUT
    @NotNull
    Call<ResponseBody> put(@Url @NotNull String str, @QueryMap @NotNull Map<String, String> map);

    @PUT
    @NotNull
    Call<ResponseBody> putBody(@Url @NotNull String str, @Body @NotNull Object obj);

    @POST
    @NotNull
    @Multipart
    Call<ResponseBody> uploadFile(@Url @NotNull String str, @NotNull @Part("description") RequestBody requestBody, @NotNull @Part("files") MultipartBody.Part part);

    @POST
    @NotNull
    @Multipart
    Call<ResponseBody> uploadFiles(@Url @NotNull String str, @NotNull @Part List<MultipartBody.Part> list);

    @POST
    @NotNull
    @Multipart
    Call<ResponseBody> uploadFiles(@Url @NotNull String str, @NotNull @PartMap Map<String, ? extends RequestBody> map);
}
