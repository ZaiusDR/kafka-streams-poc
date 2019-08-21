package info.esuarez.kafkastreamspoc

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class KafkaStreamsPocApplication

fun main(args: Array<String>) {
    runApplication<KafkaStreamsPocApplication>(*args)
}
