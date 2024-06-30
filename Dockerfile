FROM golang:1.22.4 as builder

WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY *.go ./
RUN CGO_ENABLED=0 GOOS=linux go build -o go-cicd-2

FROM scratch

COPY --from=builder /app/go-cicd-2 /app
ENTRYPOINT [ "/app" ]
